.class public Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;
.super Ljava/lang/Object;
.source "ReflectBuilderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ReflectBuilderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflAgent"
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;

.field private mObject:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;
    .locals 1

    .line 27
    new-instance v0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;

    invoke-direct {v0}, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;-><init>()V

    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public varargs call(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/utils/ReflectBuilderUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public varargs callStatic(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/utils/ReflectBuilderUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mResult:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method

.method public intResult()I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mResult:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 143
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setResultToSelf()Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mResult:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/settings/utils/ReflectBuilderUtil$ReflAgent;->mResult:Ljava/lang/Object;

    return-object p0
.end method
