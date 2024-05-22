.class public final Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;
.super Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 10
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 13
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 15
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 20
    return-void

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 23
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 26
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 28
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 31
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 33
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateScale()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 40
    return-void

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 43
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 46
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 48
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 53
    return-void
    .line 55
.end method


# virtual methods
.method public final getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 2
    return-object p0
    .line 4
.end method
