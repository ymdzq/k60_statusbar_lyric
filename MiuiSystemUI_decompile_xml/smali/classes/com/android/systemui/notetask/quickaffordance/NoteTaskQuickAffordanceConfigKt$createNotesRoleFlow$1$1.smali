.class final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $callback:Landroid/app/role/OnRoleHoldersChangedListener;

.field final synthetic $this_createNotesRoleFlow:Landroid/app/role/RoleManager;


# direct methods
.method public constructor <init>(Landroid/app/role/RoleManager;Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$callback$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;->$this_createNotesRoleFlow:Landroid/app/role/RoleManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;->$callback:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;->$this_createNotesRoleFlow:Landroid/app/role/RoleManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfigKt$createNotesRoleFlow$1$1;->$callback:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    return-object p0
    .line 13
.end method
