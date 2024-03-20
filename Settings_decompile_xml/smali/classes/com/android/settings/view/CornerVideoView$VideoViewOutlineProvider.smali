.class Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "CornerVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/view/CornerVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoViewOutlineProvider"
.end annotation


# instance fields
.field private mRadius:F

.field final synthetic this$0:Lcom/android/settings/view/CornerVideoView;


# direct methods
.method public constructor <init>(Lcom/android/settings/view/CornerVideoView;F)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;->this$0:Lcom/android/settings/view/CornerVideoView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 83
    iput p2, p0, Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;->mRadius:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    iget p0, p0, Lcom/android/settings/view/CornerVideoView$VideoViewOutlineProvider;->mRadius:F

    invoke-virtual {p2, v1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
