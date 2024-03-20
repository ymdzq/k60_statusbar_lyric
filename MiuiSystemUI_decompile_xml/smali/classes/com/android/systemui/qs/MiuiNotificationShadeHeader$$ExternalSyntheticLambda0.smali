.class public final synthetic Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiNotificationShadeHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 6
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->setNormalHeight(F)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getNormalHeight()F

    .line 16
    move-result v1

    .line 19
    iput v1, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->normalTarget:F

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getFoldHeight()F

    .line 24
    move-result v1

    .line 27
    iput v1, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->unimportantTarget:F

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getNormalHeight()F

    .line 32
    move-result v1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getFoldHeight()F

    .line 36
    move-result v2

    .line 39
    sub-float/2addr v1, v2

    .line 40
    iput v1, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->headerDif:F

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 43
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->showHeaderWithoutAnim(Z)V

    .line 47
    return-void
    .line 50
.end method
