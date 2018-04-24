## 快应用丨初始

### 遗留问题

#### 关于$app与$app.$def

`$app`与`$app.$def`（后面简称`$def`）是两个不同的对象；

* 前者代表框架为开发者暴露提供的`APP对象`；后者代表开发者在`app.ux中导出的对象`，放置业务相关的全局数据和方法；

* 前者对象`拥有onCreate, onDestroy生命周期`；当应用启动时会执行onCreate方法，里面执行this.variable1的赋值是在$app对象上；后者对象中的`onCreate, onDestroy方法并不会执行`，作用仅仅只是把方法复制到前者对象上而已；

* 这些全局方法在页面中：既可以通过this.$app.method1()调用，也可以通过this.$app.$def.method1()调用；不同之处在于前者可以取到之前赋值的variable1变量，而后者不可以取到（因为之前的赋值是在$app对象上执行的）；
