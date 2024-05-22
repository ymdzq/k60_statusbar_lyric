.class public Lcom/miui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "JSONPath"

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    return-object v2

    .line 11
    :cond_0
    const-string v1, "/"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    .line 23
    :goto_0
    if-nez v1, :cond_2

    .line 25
    return-object v2

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    move v3, p0

    .line 29
    :goto_1
    :try_start_0
    array-length v4, p1

    .line 30
    if-ge v3, v4, :cond_a

    .line 31
    aget-object v4, p1, v3

    .line 33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v5

    .line 38
    if-eqz v5, :cond_3

    .line 39
    goto :goto_3

    .line 41
    :cond_3
    const-string v5, "["

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 44
    move-result v5

    .line 47
    const/4 v6, -0x1

    .line 48
    if-eq v5, v6, :cond_4

    .line 49
    add-int/lit8 v7, v5, 0x1

    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 53
    move-result v8

    .line 56
    add-int/lit8 v8, v8, -0x1

    .line 57
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    move-result-object v7

    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    move-result v7

    .line 66
    invoke-virtual {v4, p0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move v7, v6

    .line 72
    :goto_2
    instance-of v5, v1, Lorg/json/JSONObject;

    .line 73
    if-eqz v5, :cond_5

    .line 75
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v5

    .line 80
    if-nez v5, :cond_5

    .line 81
    check-cast v1, Lorg/json/JSONObject;

    .line 83
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 88
    :cond_5
    instance-of v4, v1, Lorg/json/JSONArray;

    .line 89
    if-eqz v4, :cond_7

    .line 91
    move-object v4, v1

    .line 93
    check-cast v4, Lorg/json/JSONArray;

    .line 94
    if-ne v7, v6, :cond_6

    .line 96
    goto :goto_5

    .line 98
    :cond_6
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 102
    :cond_7
    if-eqz v1, :cond_9

    .line 103
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    if-ne v1, v4, :cond_8

    .line 107
    goto :goto_4

    .line 109
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_1

    .line 112
    :cond_9
    :goto_4
    return-object v2

    .line 113
    :cond_a
    :goto_5
    return-object v1

    .line 114
    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 119
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_6

    .line 123
    :catch_1
    move-exception p0

    .line 124
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_6
    return-object v2
    .line 132
.end method
