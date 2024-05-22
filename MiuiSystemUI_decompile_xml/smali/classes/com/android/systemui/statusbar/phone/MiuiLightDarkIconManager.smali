.class public final Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sFactory:Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;


# instance fields
.field public mColor:I

.field public mLight:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;

    .line 8
    sput-object v0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->sFactory:Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/view/ViewGroup;ZI)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    .line 2
    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->sFactory:Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    .line 6
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/MiuiIconManagerFactory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    .line 8
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;)V

    .line 10
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mLight:Z

    .line 13
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mColor:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDripEnd:Z

    .line 6
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDripEnd(Z)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mLight:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    :goto_0
    move v2, p1

    .line 24
    iget v5, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mColor:I

    .line 25
    const/4 v6, 0x0

    .line 27
    move v3, v5

    .line 28
    move v4, v5

    .line 29
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 30
    return-void
    .line 33
.end method

.method public final setLight(IZ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mLight:Z

    .line 2
    if-ne p2, v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mColor:I

    .line 6
    if-ne p1, v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mLight:Z

    .line 11
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->mColor:I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const/4 v1, 0x0

    .line 20
    move v8, v1

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v2

    .line 27
    if-ge v8, v2, :cond_3

    .line 28
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 33
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 34
    if-eqz v2, :cond_2

    .line 36
    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 38
    if-eqz p2, :cond_1

    .line 40
    const/4 v2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    :goto_1
    move v3, v2

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v2, v0

    .line 48
    move v4, p1

    .line 49
    move v5, p1

    .line 50
    move v6, p1

    .line 51
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 52
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    return-void
    .line 58
.end method
