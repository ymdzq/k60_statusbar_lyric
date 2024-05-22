.class public Lcom/android/systemui/fsgesture/DrawerDemoAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final IS_DEBUG:Z


# instance fields
.field public drawerImg:Landroid/widget/ImageView;

.field public fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field public fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field public final handler:Landroid/os/Handler;

.field public initTranslateWidht:I

.field public maxTranslateWidth:I

.field public shelterView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d00ad    # @layout/drawer_demo_layout 'res/layout/drawer_demo_layout.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    const p1, 0x7f0a02f8    # @id/drawer_img

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 20
    const p1, 0x7f0a0877    # @id/shelter_view

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 39
    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 47
    const p1, 0x7f0a039f    # @id/fsgesture_title_view

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 56
    check-cast p1, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 61
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 65
    move-result p1

    .line 68
    const/4 v0, 0x1

    .line 69
    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 77
    const/4 v0, 0x4

    .line 79
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 83
    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;

    .line 85
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    .line 87
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 90
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 97
    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 99
    const p1, 0x7f0a039e    # @id/fsgesture_swipe_view

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 108
    check-cast p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 111
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;

    .line 115
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    .line 117
    const-wide/16 v1, 0x1f4

    .line 120
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 127
    move-result-object p1

    .line 130
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 131
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 133
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 137
    return-void
    .line 139
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 7
    return-void
    .line 10
.end method
