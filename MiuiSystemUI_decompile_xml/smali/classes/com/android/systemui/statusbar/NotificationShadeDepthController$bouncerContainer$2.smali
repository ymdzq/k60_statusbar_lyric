.class final Lcom/android/systemui/statusbar/NotificationShadeDepthController$bouncerContainer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$bouncerContainer$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$bouncerContainer$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0a0473    # @id/keyguard_bouncer_container

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method
