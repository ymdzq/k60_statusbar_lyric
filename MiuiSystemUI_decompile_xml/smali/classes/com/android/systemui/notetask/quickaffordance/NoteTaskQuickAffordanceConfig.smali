.class public final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;

.field public final isEnabled:Z

.field public final keyguardMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lazyRepository:Ldagger/Lazy;

.field public final lockScreenState$delegate:Lkotlin/Lazy;

.field public final noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final stylusManager:Lcom/android/systemui/stylus/StylusManager;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/notetask/NoteTaskController;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/stylus/StylusManager;Landroid/app/role/RoleManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/UserManager;Ldagger/Lazy;ZLjava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->noteTaskInfoResolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->stylusManager:Lcom/android/systemui/stylus/StylusManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->roleManager:Landroid/app/role/RoleManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->keyguardMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->userManager:Landroid/os/UserManager;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lazyRepository:Ldagger/Lazy;

    .line 19
    iput-boolean p9, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->isEnabled:Z

    .line 21
    iput-object p10, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 23
    new-instance p1, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2;-><init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;)V

    .line 27
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lockScreenState$delegate:Lkotlin/Lazy;

    .line 34
    return-void
    .line 36
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "create_note"

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->lockScreenState$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 8
    return-object p0
    .line 10
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->context:Landroid/content/Context;

    .line 2
    const v0, 0x7f130866    # @string/note_task_button_label 'Notetaking'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method
