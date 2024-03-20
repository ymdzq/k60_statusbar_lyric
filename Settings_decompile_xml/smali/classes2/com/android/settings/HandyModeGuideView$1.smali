.class Lcom/android/settings/HandyModeGuideView$1;
.super Landroid/view/ViewOutlineProvider;
.source "HandyModeGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HandyModeGuideView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HandyModeGuideView;


# direct methods
.method constructor <init>(Lcom/android/settings/HandyModeGuideView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/HandyModeGuideView$1;->this$0:Lcom/android/settings/HandyModeGuideView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 40
    iget-object p0, p0, Lcom/android/settings/HandyModeGuideView$1;->this$0:Lcom/android/settings/HandyModeGuideView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const p1, 0x418b3333    # 17.4f

    mul-float v5, p0, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
