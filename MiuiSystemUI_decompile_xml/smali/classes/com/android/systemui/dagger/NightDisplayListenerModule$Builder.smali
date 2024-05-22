.class public final Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mUserId:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;->mBgHandler:Landroid/os/Handler;

    .line 10
    return-void
    .line 12
.end method
