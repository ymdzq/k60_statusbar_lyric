.class public final Lcom/xiaomi/onetrack/util/g;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/onetrack/util/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/util/g;->b:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/xiaomi/onetrack/util/g;->c:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "https://"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 13
    const-string v2, "http://"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const-string v2, "/api/open/device/writeBack"

    .line 21
    if-nez v1, :cond_2

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/g;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    .line 69
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v2, "instanceId"

    .line 74
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 76
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "imei"

    .line 87
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 89
    iget-object v3, v3, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    .line 91
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "oaid"

    .line 100
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 102
    move-result-object v3

    .line 105
    iget-object v4, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 106
    iget-object v4, v4, Lcom/xiaomi/onetrack/util/d;->j:Landroid/content/Context;

    .line 108
    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 113
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "projectId"

    .line 117
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->b:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v2, "user"

    .line 124
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/g;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v2, 0x0

    .line 132
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    move-result v1

    .line 140
    if-nez v1, :cond_4

    .line 141
    const-string v1, ""

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v1

    .line 148
    if-eqz v1, :cond_3

    .line 149
    goto :goto_2

    .line 151
    :cond_3
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 152
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/d;->c(Lcom/xiaomi/onetrack/util/d;Ljava/lang/String;)V

    .line 154
    goto :goto_3

    .line 157
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 158
    move-result-object v0

    .line 161
    const/16 v1, 0x64

    .line 162
    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    new-instance v1, Landroid/os/Bundle;

    .line 166
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v2, "hint"

    .line 171
    const-string/jumbo v3, "\u6ce8\u518c\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u7f51\u7edc\u73af\u5883\u662f\u5426\u5728\u5185\u7f51"

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/g;->d:Lcom/xiaomi/onetrack/util/d;

    .line 182
    iget-object p0, p0, Lcom/xiaomi/onetrack/util/d;->k:Lcom/xiaomi/onetrack/util/e;

    .line 184
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    return-void

    .line 189
    :catch_0
    move-exception p0

    .line 190
    const-string v0, "d"

    .line 191
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 196
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_3
    return-void
    .line 200
.end method
