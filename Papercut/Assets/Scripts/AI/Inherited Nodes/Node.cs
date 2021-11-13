[System.Serializable]
public abstract class Node
{
    protected NodeState _nodeState;

    public NodeState NodeState => _nodeState;

    public abstract NodeState Evaluate();
}

public enum NodeState
{
    RUNNING, SUCCESS, FAILURE
}
