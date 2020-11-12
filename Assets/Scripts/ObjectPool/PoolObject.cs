using System.Collections;
using UnityEngine;
using Utilty;

public class PoolObject : ObjectByPool {
    
    protected override void OnEnable()
    {
        base.OnEnable();
        StartCoroutine(DelayRececle(3));
    }

    public override void ObjectInit()
    {
        gameObject.transform.position = Vector3.zero;
        gameObject.transform.rotation = Quaternion.identity;
        gameObject.GetComponent<Rigidbody>().velocity = Vector3.zero;
        gameObject.GetComponent<Rigidbody>().angularVelocity = Vector3.zero;
    }

    public override void ObjectDispose()
    {
        
    }

    IEnumerator DelayRececle(float interval)
    {
        //等待几秒
        yield return new WaitForSeconds(interval);
        //回收当前对象
        ObjectPool.GetInstance().RecycleObj(gameObject);
    }
}