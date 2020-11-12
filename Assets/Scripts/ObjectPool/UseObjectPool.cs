using UnityEngine;
using Utilty;

public class UseObjectPool : MonoBehaviour {
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            GameObject go = ObjectPool.GetInstance().SpawnObject("Prefab");
        }
    }
}