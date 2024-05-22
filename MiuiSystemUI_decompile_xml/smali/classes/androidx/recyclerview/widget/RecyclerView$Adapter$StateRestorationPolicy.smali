.class public final enum Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 2
    const-string v1, "ALLOW"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 10
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 12
    const-string v2, "PREVENT_WHEN_EMPTY"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    .line 17
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 20
    const-string v3, "PREVENT"

    .line 22
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    .line 25
    filled-new-array {v0, v1, v2}, [Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 28
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 32
    return-void
    .line 34
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    .line 1
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 2
    invoke-virtual {v0}, [Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 8
    return-object v0
    .line 10
.end method
