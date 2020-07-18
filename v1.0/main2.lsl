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