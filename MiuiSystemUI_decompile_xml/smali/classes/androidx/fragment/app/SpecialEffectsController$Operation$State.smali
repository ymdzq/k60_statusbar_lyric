.class public final enum Landroidx/fragment/app/SpecialEffectsController$Operation$State;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field public static final enum VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2
    const-string v1, "REMOVED"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 10
    new-instance v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 12
    const-string v2, "VISIBLE"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 20
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 22
    const-string v3, "GONE"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 30
    new-instance v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 32
    const-string v4, "INVISIBLE"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 42
    move-result-object v0

    .line 45
    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 46
    return-void
    .line 48
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 1

    .line 1
    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .locals 1

    .line 1
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final applyState(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-eqz p0, :cond_6

    .line 7
    const/4 v1, 0x1

    .line 9
    if-eq p0, v1, :cond_4

    .line 10
    if-eq p0, v0, :cond_2

    .line 12
    const/4 v1, 0x3

    .line 14
    if-eq p0, v1, :cond_0

    .line 15
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    :cond_1
    const/4 p0, 0x4

    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    goto :goto_1

    .line 31
    :cond_2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 32
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    :cond_3
    const/16 p0, 0x8

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    goto :goto_1

    .line 46
    :cond_4
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 47
    move-result p0

    .line 50
    if-eqz p0, :cond_5

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    :cond_5
    const/4 p0, 0x0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    goto :goto_1

    .line 60
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    move-result-object p0

    .line 64
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 65
    if-eqz v1, :cond_7

    .line 67
    check-cast p0, Landroid/view/ViewGroup;

    .line 69
    goto :goto_0

    .line 71
    :cond_7
    const/4 p0, 0x0

    .line 72
    :goto_0
    if-eqz p0, :cond_9

    .line 73
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_8

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    :cond_9
    :goto_1
    return-void
    .line 90
.end method
