.class final Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1$onUserChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1$onUserChanged$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1$onUserChanged$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->setListening(Z)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$userTrackerCallback$1$onUserChanged$1;->this$0:Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;

    .line 8
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController;->setListening(Z)V

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    return-object p0
    .line 16
.end method
