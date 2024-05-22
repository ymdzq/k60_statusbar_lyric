.class public final Lcom/miui/systemui/controller/SuperSaveModeController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContentObserver:Lcom/miui/systemui/controller/SuperSaveModeController$1;

.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/List;

.field public final mMainHandler:Landroid/os/Handler;

.field public volatile mSuperSaveModeOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mContext:Landroid/content/Context;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 12
    iput-object p3, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mMainHandler:Landroid/os/Handler;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p3

    .line 19
    const-string v0, "power_supersave_mode_open"

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-static {p3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    move-result p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    const/4 p3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p3, v1

    .line 31
    :goto_0
    iput-boolean p3, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 32
    new-instance p3, Lcom/miui/systemui/controller/SuperSaveModeController$1;

    .line 34
    invoke-direct {p3, p0, p2}, Lcom/miui/systemui/controller/SuperSaveModeController$1;-><init>(Lcom/miui/systemui/controller/SuperSaveModeController;Landroid/os/Handler;)V

    .line 36
    iput-object p3, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mContentObserver:Lcom/miui/systemui/controller/SuperSaveModeController$1;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object p1

    .line 44
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    move-result-object v0

    .line 48
    const/4 v2, -0x1

    .line 49
    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 50
    invoke-virtual {p3, v1}, Lcom/miui/systemui/controller/SuperSaveModeController$1;->onChange(Z)V

    .line 53
    new-instance p1, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;

    .line 56
    invoke-direct {p1, v1, p0}, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
    .line 64
.end method


# virtual methods
.method public final addCallback(Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-boolean p0, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 12
    invoke-interface {p1, p0}, Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;->onSuperSaveModeChange(Z)V

    .line 14
    return-void
    .line 17
.end method
