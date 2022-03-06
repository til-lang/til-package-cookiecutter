import til.nodes;


extern (C) CommandsMap getCommands(Escopo escopo)
{
    CommandsMap commands;

    commands[null] = new Command((string path, Context context)
    {
        string arg0 = context.pop!string();
        return context.push(arg0);
    });

    return commands;
}
