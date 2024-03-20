.class public final synthetic Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda0;->f$0:Landroid/content/res/Configuration;

    .line 2
    check-cast p1, Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 4
    sget v0, Lcom/android/systemui/qs/QSPanel;->$r8$clinit:I

    .line 6
    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$1;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$1;->this$0:Lcom/android/systemui/qs/QSPanelControllerBase;

    .line 10
    iget-boolean v6, p1, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    .line 12
    iget v2, p1, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 20
    move-result v5

    .line 23
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    .line 24
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    .line 26
    iput v3, p1, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    .line 28
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 30
    iget-object p0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 32
    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 39
    move v4, v6

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/logging/QSLogger;->logOnConfigurationChanged(Ljava/lang/String;IIZZ)V

    .line 41
    const/4 p0, 0x0

    .line 44
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->onConfigurationChanged()V

    .line 48
    iget-boolean p0, p1, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    .line 51
    if-eq v6, p0, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onSplitShadeChanged(Z)V

    .line 55
    :cond_0
    return-void
    .line 58
.end method
