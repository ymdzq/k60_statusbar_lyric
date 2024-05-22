.class public Lcom/android/systemui/fsgesture/DemoIntroduceAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d0090    # @layout/demo_intro_layout 'res/layout/demo_intro_layout.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "IS_FROM_PROVISION"

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 18
    move-result p1

    .line 21
    const v0, 0x7f0a0178    # @id/btn_back

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    new-instance v1, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;

    .line 31
    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/DemoIntroduceAct$1;-><init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0a017e    # @id/btn_next

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    new-instance v1, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;

    .line 48
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/DemoIntroduceAct$2;-><init>(Lcom/android/systemui/fsgesture/DemoIntroduceAct;Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const p1, 0x7f0a044d    # @id/intro_container

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 63
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 65
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 69
    return-void
    .line 71
.end method
