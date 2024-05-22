.class public final Lcom/miui/systemui/controller/ForceBlackObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/ForceBlackObserver;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/ForceBlackObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 2
    iget-object p1, p1, Lcom/miui/systemui/controller/ForceBlackObserver;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "force_black"

    .line 10
    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 15
    iget-object v1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 16
    iget-object v1, v1, Lcom/miui/systemui/controller/ForceBlackObserver;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v1

    .line 23
    const-string v2, "force_black_v2"

    .line 24
    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 33
    iget-object p1, p1, Lcom/miui/systemui/controller/ForceBlackObserver;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object p1

    .line 40
    invoke-static {p1, v2, v3}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 41
    iget-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 44
    iget-object p1, p1, Lcom/miui/systemui/controller/ForceBlackObserver;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    move-result-object p1

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 53
    move p1, v1

    .line 56
    move v1, v3

    .line 57
    :cond_0
    if-eqz p1, :cond_2

    .line 58
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 60
    if-eqz v2, :cond_1

    .line 62
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 64
    const-string v4, "odin"

    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 71
    if-nez v4, :cond_1

    .line 72
    const-string v4, "cetus"

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 82
    iget-object v2, v2, Lcom/miui/systemui/controller/ForceBlackObserver;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object v2

    .line 89
    invoke-static {v2, v0, v3}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    const-string v2, "onChange: mForceBlack = "

    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, ", mForceBlackV2 = "

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 114
    const-string v2, "ForceBlackObserver"

    .line 115
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 120
    iget-boolean v0, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 122
    if-ne p1, v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 126
    iget-boolean v0, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlackV2:Z

    .line 128
    if-eq v1, v0, :cond_4

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 132
    iput-boolean p1, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 134
    iget-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 136
    iput-boolean v1, p1, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlackV2:Z

    .line 138
    iget-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 140
    iget-object p1, p1, Lcom/miui/systemui/controller/ForceBlackObserver;->mMainHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/miui/systemui/controller/ForceBlackObserver$1$1;

    .line 144
    invoke-direct {v0, p0}, Lcom/miui/systemui/controller/ForceBlackObserver$1$1;-><init>(Lcom/miui/systemui/controller/ForceBlackObserver$1;)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_4
    return-void
    .line 152
.end method
