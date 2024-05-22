.class public final synthetic Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardClockSwitch;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 5
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    sget v0, Lcom/android/keyguard/KeyguardClockSwitch;->$r8$clinit:I

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$1:Z

    .line 11
    invoke-interface {p1, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 13
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$2:Z

    .line 16
    invoke-interface {p1, p0}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 21
    invoke-interface {p1, p0}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    return-object p0
    .line 28
.end method
