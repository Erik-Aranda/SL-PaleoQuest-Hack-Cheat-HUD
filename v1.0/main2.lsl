//CAMARA1 MISION COFRE: <246.88720, 196.77600, 33.04897>


Server()
{

}

default
{
    state_entry()
    {
        Server();
    }
    attach(ID)
    {
        if(ID==NULL_KEY)
        {
            llDie();
        }
        else
        {
            Server();
        }
    }
}