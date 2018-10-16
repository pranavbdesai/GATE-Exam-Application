using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


// Summary description for Connection class which is globally used in project for intracting to database

namespace conn
{
    //this all are the objects Declaration which is used in this project
    public class Connection
    {
        public SqlConnection con;
        public SqlDataReader dr;
        public SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        string StrError;


        //for the establishing connection to the database
        public Connection()
        {
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            }
            catch (SqlException sqlEx)
            {
                StrError = sqlEx.Message;
            }
            catch (Exception ex)
            {
                StrError = ex.Message;
                //return StrError;
            }
        }

        //this code for the open connection to the database for retraiving or saving of data
        public void Open_Connection()
        {
            try
            {
                con.Open();
            }
            catch (SqlException sqlEx)
            {
                StrError = sqlEx.Message;
            }
            catch (Exception ex)
            {
                StrError = ex.Message;
                //return StrError;
            }
        }
        // this code for closing connection to database after retraving or saving process is comleted
        public void Close_Connection()
        {
            con.Close();
        }


        //this code for working with the table which are created in database
        public DataTable gettable(string query)
        {
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            
            return dt;
        }

        //this code for virtually created data table query processing
        public DataSet getds(string query)
        {
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            return ds;

        }
        public DataSet GetDataset(string query)
        {
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            DataSet ds1 = new DataSet();
            adp.Fill(ds1);
            return ds1;
        }

        // this code for the insert data to the database
        public void insert(string query)
        {
            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // this code for the delete data to the database
        public void delete(string query)
        {
            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // this code for the update data to the database
        public void update(string query)
        {
            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

        // this code for the  data to the database
        public SqlDataReader readata(string query)
        {
            con.Open();
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();
        }
        
        //This code for the virtualtable for query result and than bind the each table and give output of query

        public void fillgrid(GridView v, string query)
        {
            v.DataSource = gettable(query);
            v.DataBind();
        }
        public DataSet Bindgrid(string query)
        {
            DataSet ods = new DataSet();
            ods = getds(query);
            return ods;
        }

        //This code for binding all query result

        public void checkconection(string query)
        {
            con.ConnectionString = "Data Source= " + query + ";Initial Catalog=dbOnlineMultiplex.MDF;Integrated Security=True";
        }
    }
}

