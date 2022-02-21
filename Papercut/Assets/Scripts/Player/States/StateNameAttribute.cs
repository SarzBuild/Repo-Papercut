using System;
using System.Linq;

public class StateNameAttribute : Attribute
{
    public string Name { get; private set; }

    public StateNameAttribute(string name)
    {
        this.Name = name;
    }

    public static String GetStateName(Enum value)
    {
        var enumType = value.GetType();
        var name = Enum.GetName(enumType, value);
        return enumType.GetField(name).GetCustomAttributes(false).OfType<StateNameAttribute>().SingleOrDefault().Name;
    }
}


