.class public final Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mIWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;->mHandler:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$Factory;->mIWindowManager:Landroid/view/IWindowManager;

    .line 7
    return-void
    .line 9
.end method
