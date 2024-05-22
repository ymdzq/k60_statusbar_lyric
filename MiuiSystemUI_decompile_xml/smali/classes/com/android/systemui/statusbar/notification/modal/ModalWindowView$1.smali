.class public final Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;
.super Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 7
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 10
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 12
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 15
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 17
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 21
    return-void

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 27
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 29
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 32
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 2
    return-object p0
    .line 4
.end method
