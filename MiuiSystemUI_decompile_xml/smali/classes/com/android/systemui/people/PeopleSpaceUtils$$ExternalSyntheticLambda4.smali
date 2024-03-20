.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/UserManager;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;->f$0:Landroid/os/UserManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;->f$0:Landroid/os/UserManager;

    .line 2
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 10
    move-result p0

    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    return p0
    .line 16
.end method
