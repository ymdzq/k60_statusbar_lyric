.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBlurRadiusChanged(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    div-float/2addr p1, v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mBlurRatioChangedListener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mThemeBackgroundView:Landroid/view/View;

    .line 8
    if-nez p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    :goto_0
    return-void
    .line 16
.end method

.method public final onWallpaperZoomOutChanged(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
