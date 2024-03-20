.class final Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $bottomIconIsDeep:Z

.field final synthetic $clockStyleIsDeep:Z

.field final synthetic $colorMap:Ljava/util/Map;

.field final synthetic $colorScheme:I

.field final synthetic $fingerPrintIsDeep:Z

.field final synthetic $magazineScriptIsDeep:Z

.field final synthetic $statusBarIsDeep:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$colorMap:Ljava/util/Map;

    .line 2
    iput p2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$colorScheme:I

    .line 4
    iput-boolean p3, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$statusBarIsDeep:Z

    .line 6
    iput-boolean p4, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$clockStyleIsDeep:Z

    .line 8
    iput-boolean p5, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$fingerPrintIsDeep:Z

    .line 10
    iput-boolean p6, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$bottomIconIsDeep:Z

    .line 12
    iput-boolean p7, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$magazineScriptIsDeep:Z

    .line 14
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 3
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$colorMap:Ljava/util/Map;

    .line 5
    iget v2, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$colorScheme:I

    .line 7
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$statusBarIsDeep:Z

    .line 9
    iget-boolean v4, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$clockStyleIsDeep:Z

    .line 11
    iget-boolean v5, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$fingerPrintIsDeep:Z

    .line 13
    iget-boolean v6, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$bottomIconIsDeep:Z

    .line 15
    iget-boolean v7, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector$handlePartColorComputeComplete$1;->$magazineScriptIsDeep:Z

    .line 17
    invoke-interface/range {v0 .. v7}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    return-object p0
.end method
