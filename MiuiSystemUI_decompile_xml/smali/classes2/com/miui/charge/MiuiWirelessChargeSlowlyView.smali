.class public final Lcom/miui/charge/MiuiWirelessChargeSlowlyView;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDialog:Lmiuix/appcompat/app/AlertDialog;

.field public final mHandler:Landroid/os/Handler;

.field public mImageView:Landroid/widget/ImageView;

.field public final mSurfaceTextureListener:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

.field public final mTipOnlyOnce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;-><init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView;)V

    .line 14
    iput-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    .line 17
    iput-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    .line 19
    iput-boolean p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mTipOnlyOnce:Z

    .line 21
    return-void
    .line 23
.end method
