.class Lcom/android/settings/freeform/FreeformVedioView$2;
.super Landroid/view/ViewOutlineProvider;
.source "FreeformVedioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/freeform/FreeformVedioView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/freeform/FreeformVedioView;


# direct methods
.method constructor <init>(Lcom/android/settings/freeform/FreeformVedioView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/freeform/FreeformVedioView$2;->this$0:Lcom/android/settings/freeform/FreeformVedioView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/android/settings/freeform/FreeformVedioView;->-$$Nest$sfgetPAD_RADIUS_PIN()F

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
