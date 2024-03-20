.class public Lcom/android/systemui/fsgesture/DemoFinishAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isFromPro:Z

.field public replayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d00c4    # @layout/fs_gesture_demo_final_view 'res/layout/fs_gesture_demo_final_view.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "DEMO_TYPE"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "IS_FROM_PROVISION"

    .line 21
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 24
    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->isFromPro:Z

    .line 28
    const p1, 0x7f0a0397    # @id/fs_gesture_final_restart

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/TextView;

    .line 39
    new-instance v1, Lcom/android/systemui/fsgesture/DemoFinishAct$1;

    .line 41
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fsgesture/DemoFinishAct$1;-><init>(Lcom/android/systemui/fsgesture/DemoFinishAct;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const p1, 0x7f0a0396    # @id/fs_gesture_final_over

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    new-instance v0, Lcom/android/systemui/fsgesture/DemoFinishAct$2;

    .line 58
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DemoFinishAct$2;-><init>(Lcom/android/systemui/fsgesture/DemoFinishAct;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DemoFinishAct;->replayView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 68
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 72
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 74
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 78
    return-void
    .line 80
.end method
