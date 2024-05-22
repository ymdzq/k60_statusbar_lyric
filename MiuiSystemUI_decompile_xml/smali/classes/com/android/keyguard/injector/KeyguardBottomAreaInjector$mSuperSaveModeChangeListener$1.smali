.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSuperSaveModeChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mSuperSavePowerMode:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateIcons()V

    .line 6
    return-void
    .line 9
.end method
