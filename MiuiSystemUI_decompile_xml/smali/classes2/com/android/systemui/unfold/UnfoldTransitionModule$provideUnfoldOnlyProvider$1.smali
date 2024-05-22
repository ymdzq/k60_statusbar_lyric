.class public final Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $executor:Ljava/lang/Object;

.field public final synthetic $foldProvider:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$foldProvider:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$executor:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 8
    new-instance v0, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$foldProvider:Ljava/lang/Object;

    .line 12
    check-cast v1, Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$executor:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 18
    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/unfold/util/UnfoldOnlyProgressProvider;-><init>(Lcom/android/systemui/unfold/updates/FoldProvider;Ljava/util/concurrent/Executor;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    .line 20
    return-object v0

    .line 23
    :goto_0
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 24
    new-instance v0, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$foldProvider:Ljava/lang/Object;

    .line 28
    check-cast v1, Landroid/content/Context;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionModule$provideUnfoldOnlyProvider$1;->$executor:Ljava/lang/Object;

    .line 32
    check-cast p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 34
    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;-><init>(Landroid/content/Context;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    .line 36
    return-object v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
