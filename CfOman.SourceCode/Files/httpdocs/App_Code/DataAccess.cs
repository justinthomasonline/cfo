using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

/// <summary>
/// Summary description for MemoDataAccess
/// </summary>
/// 

public class ConnectionManager
{
    public static SqlConnection GetConnection()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

        SqlConnection sqlConnection = new SqlConnection(connectionString);
        sqlConnection.Open();
        return sqlConnection;
    }
}

public class DataAccess
{
    public static DataSet GetData(string sql, string TableName)
    {
        DataSet dataSet = new DataSet();
        using (SqlConnection connection = ConnectionManager.GetConnection())
            new SqlDataAdapter(new SqlCommand(sql, connection)).Fill(dataSet, TableName);
        return dataSet;
    }

    public static DataSet GetData(string sql, string TableName, string[] SqlParams, string[] SqlValues)
    {
        DataSet dataSet = new DataSet();

        using (SqlConnection connection = ConnectionManager.GetConnection())
        {
            SqlCommand Cm = new SqlCommand(sql, connection);

            int index = 0;
            foreach (string Param in SqlParams)
            {
                Cm.Parameters.AddWithValue(Param, SqlValues[index]);
                index++;
            }

            new SqlDataAdapter(Cm).Fill(dataSet, TableName);
        }
        return dataSet;
    }

    public static string Insert(string TableName, string[] SqlValues)
    {
        DataSet dataSet = new DataSet();

        string sql = "INSERT INTO " + TableName + " output INSERTED.ID VALUES(";

        using (SqlConnection connection = ConnectionManager.GetConnection())
        {
            int index = 0;
            foreach (string Param in SqlValues)
            {
                sql += "@Param" + index + ",";
                index++;
            }
            sql = sql.TrimEnd(',');
            sql += ")";


            SqlCommand Cm = new SqlCommand(sql, connection);

            index = 0;
            foreach (string Param in SqlValues)
            {
                Cm.Parameters.AddWithValue("Param" + index, SqlValues[index]);
                index++;
            }
          
            
            return ((int)Cm.ExecuteScalar()).ToString();
        }        
    }

    public static void Update(string TableName, string IDFieldName, string IDFieldValue , string[] NamesAndValues)
    {
        DataSet dataSet = new DataSet();
        


        using (SqlConnection connection = ConnectionManager.GetConnection())
        {

            string cmdText = "UPDATE " + TableName + " SET ";
            int index = 0;
            while (index < NamesAndValues.GetLength(0))
            {
                if (index != NamesAndValues.GetLength(0) - 2)
                    cmdText = cmdText + NamesAndValues.GetValue(index).ToString() + "=@" + NamesAndValues.GetValue(index).ToString() + ",";
                else
                    cmdText = cmdText + NamesAndValues.GetValue(index).ToString() + "=@" + NamesAndValues.GetValue(index).ToString() + " WHERE " + IDFieldName + "=" + IDFieldValue.ToString();
                index += 2;
            }      

            SqlCommand Cm = new SqlCommand(cmdText, connection);
            index = 0;

            while (index < NamesAndValues.GetLength(0))
            {
                Cm.Parameters.AddWithValue("@"+NamesAndValues.GetValue(index).ToString(), NamesAndValues.GetValue(index + 1));               
                index += 2;
            }


            Cm.ExecuteScalar();
          
        }
    }

    public static void Delete(int IDFieldValue, string IDFieldName, string TableName)
    {

        string cmdText = "DELETE FROM " + TableName + " WHERE " + IDFieldName + "=" + "@ParamDelete";

        using (SqlConnection connection = ConnectionManager.GetConnection())
        {
            SqlCommand Cm = new SqlCommand(cmdText, connection);
            Cm.Parameters.AddWithValue("@ParamDelete", IDFieldValue.ToString());
            Cm.ExecuteNonQuery();
        }
    }

    public static string InsertRow(string TableName, params object[] Values)
    {
        string cmdText = "INSERT INTO " + TableName + " output INSERTED.ID VALUES(";
        for (int index = 0; index < Values.GetLength(0); ++index)
        {
            if (index != Values.GetLength(0) - 1)
                cmdText = string.Concat(new object[4]
          {
            (object) cmdText,
            (object) "'",
            Values.GetValue(index),
            (object) "',"
          });
            else
                cmdText = string.Concat(new object[4]
          {
            (object) cmdText,
            (object) "'",
            Values.GetValue(index),
            (object) "')"
          });
        }
        using (SqlConnection connection = ConnectionManager.GetConnection())
        {
            SqlCommand command = new SqlCommand(cmdText, connection);
            return ((int)command.ExecuteScalar()).ToString();
        }
    }

    public static void UpdateRow(int IDFieldValue, string IDFieldName, string TableName, params object[] NamesAndValues)
    {
        string cmdText = "UPDATE " + TableName + " SET ";
        int index = 0;
        while (index < NamesAndValues.GetLength(0))
        {
            if (index != NamesAndValues.GetLength(0) - 2)
                cmdText = cmdText + NamesAndValues.GetValue(index) + "='" + NamesAndValues.GetValue(index + 1).ToString() + "',";
            else
                cmdText = cmdText + NamesAndValues.GetValue(index) + "='" + NamesAndValues.GetValue(index + 1).ToString() + "' WHERE " + IDFieldName + "=" + IDFieldValue.ToString();
            index += 2;
        }
        using (SqlConnection connection = ConnectionManager.GetConnection())
            new SqlCommand(cmdText, connection).ExecuteNonQuery();
    }

    public static void DeleteRow(int IDFieldValue, string IDFieldName, string TableName)
    {
        using (SqlConnection connection = ConnectionManager.GetConnection())
            new SqlCommand("DELETE FROM " + TableName + " WHERE " + IDFieldName + "=" + IDFieldValue.ToString(), connection).ExecuteNonQuery();
    }

  
}