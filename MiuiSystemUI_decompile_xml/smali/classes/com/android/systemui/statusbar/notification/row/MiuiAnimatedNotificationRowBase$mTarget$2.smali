.class final Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mTarget$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mTarget$2;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase$mTarget$2;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiAnimatedNotificationRowBase;

    .line 2
    sget-object v0, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 4
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x3b03126f    # 0.002f

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method
