using System.Collections;
using UnityEngine;
using Utilty;

public class QuestionDemo : MonoBehaviour {
    
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            GameObject go = PrefabManager.GetInstance().CreateGameObjectByPrefab("Prefab");
            Destroy(go,2f);
        }
    }
}