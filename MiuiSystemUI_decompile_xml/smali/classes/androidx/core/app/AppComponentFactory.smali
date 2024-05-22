.class public abstract Landroidx/core/app/AppComponentFactory;
.super Landroid/app/AppComponentFactory;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 0

    .line 1
    check-cast p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 2
    iget-object p3, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 4
    if-nez p3, :cond_0

    .line 6
    sget-object p3, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 8
    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 12
    move-result-object p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    invoke-interface {p3, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    check-cast p0, Lcom/android/systemui/dagger/ContextComponentResolver;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mActivityCreators:Ljava/util/Map;

    .line 29
    invoke-static {p2, p0}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/app/Activity;

    .line 35
    if-nez p0, :cond_2

    .line 37
    const/4 p0, 0x0

    .line 39
    :try_start_0
    invoke-static {p2, p0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 40
    move-result-object p1

    .line 43
    const-class p2, Landroid/app/Activity;

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 46
    move-result-object p1

    .line 49
    new-array p2, p0, [Ljava/lang/Class;

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 52
    move-result-object p1

    .line 55
    new-array p0, p0, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    check-cast p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    const-string p2, "Couldn\'t call constructor"

    .line 68
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    throw p1

    .line 73
    :cond_2
    :goto_1
    invoke-static {p0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Landroid/app/Activity;

    .line 78
    return-object p0
    .line 80
.end method

.method public final instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1

    .line 1
    check-cast p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 2
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 5
    move-result-object p1

    .line 8
    const-class p2, Landroid/app/Application;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 11
    move-result-object p1

    .line 14
    new-array p2, v0, [Ljava/lang/Class;

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object p1

    .line 20
    new-array p2, v0, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    instance-of p2, p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    .line 29
    if-eqz p2, :cond_0

    .line 31
    move-object p2, p1

    .line 33
    check-cast p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    .line 34
    new-instance v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateApplicationCompat$1;-><init>(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    .line 38
    invoke-interface {p2, v0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V

    .line 41
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    check-cast p0, Landroid/app/Application;

    .line 48
    return-object p0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 51
    const-string p1, "App must implement ContextInitializer"

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    .line 60
    const-string p2, "Couldn\'t call constructor"

    .line 62
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    throw p1
    .line 67
.end method

.method public final instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1

    .line 1
    check-cast p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 2
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 5
    move-result-object p1

    .line 8
    const-class p2, Landroid/content/ContentProvider;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 11
    move-result-object p1

    .line 14
    new-array p2, v0, [Ljava/lang/Class;

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object p1

    .line 20
    new-array p2, v0, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Landroid/content/ContentProvider;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    instance-of p2, p1, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    .line 29
    if-eqz p2, :cond_0

    .line 31
    move-object p2, p1

    .line 33
    check-cast p2, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;

    .line 34
    new-instance v0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;

    .line 36
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;-><init>(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/ContentProvider;)V

    .line 38
    invoke-interface {p2, v0}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;->setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V

    .line 41
    :cond_0
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    check-cast p0, Landroid/content/ContentProvider;

    .line 48
    return-object p0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    const-string p2, "Couldn\'t call constructor"

    .line 54
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    throw p1
    .line 59
.end method

.method public final instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    check-cast p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 2
    iget-object p3, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 4
    if-nez p3, :cond_0

    .line 6
    sget-object p3, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 8
    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 12
    move-result-object p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    invoke-interface {p3, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    check-cast p0, Lcom/android/systemui/dagger/ContextComponentResolver;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mBroadcastReceiverCreators:Ljava/util/Map;

    .line 29
    invoke-static {p2, p0}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/content/BroadcastReceiver;

    .line 35
    if-nez p0, :cond_2

    .line 37
    const/4 p0, 0x0

    .line 39
    :try_start_0
    invoke-static {p2, p0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 40
    move-result-object p1

    .line 43
    const-class p2, Landroid/content/BroadcastReceiver;

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 46
    move-result-object p1

    .line 49
    new-array p2, p0, [Ljava/lang/Class;

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 52
    move-result-object p1

    .line 55
    new-array p0, p0, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    check-cast p0, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    const-string p2, "Couldn\'t call constructor"

    .line 68
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    throw p1

    .line 73
    :cond_2
    :goto_1
    invoke-static {p0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Landroid/content/BroadcastReceiver;

    .line 78
    return-object p0
    .line 80
.end method

.method public final instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .locals 0

    .line 1
    check-cast p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 2
    iget-object p3, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 4
    if-nez p3, :cond_0

    .line 6
    sget-object p3, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 8
    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 12
    move-result-object p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    invoke-interface {p3, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;

    .line 21
    if-eqz p0, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    check-cast p0, Lcom/android/systemui/dagger/ContextComponentResolver;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/dagger/ContextComponentResolver;->mServiceCreators:Ljava/util/Map;

    .line 29
    invoke-static {p2, p0}, Lcom/android/systemui/dagger/ContextComponentResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/app/Service;

    .line 35
    if-nez p0, :cond_2

    .line 37
    const/4 p0, 0x0

    .line 39
    :try_start_0
    invoke-static {p2, p0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 40
    move-result-object p1

    .line 43
    const-class p2, Landroid/app/Service;

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 46
    move-result-object p1

    .line 49
    new-array p2, p0, [Ljava/lang/Class;

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 52
    move-result-object p1

    .line 55
    new-array p0, p0, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    check-cast p0, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    const-string p2, "Couldn\'t call constructor"

    .line 68
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    throw p1

    .line 73
    :cond_2
    :goto_1
    invoke-static {p0}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Landroid/app/Service;

    .line 78
    return-object p0
    .line 80
.end method
