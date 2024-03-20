.class public final Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 5
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 15
    const p1, 0x7f0b005e    # @integer/doze_small_icon_alpha '222'

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 19
    return-void
    .line 22
.end method
