.class final synthetic Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;->INSTANCE:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x1

    .line 2
    const-class v2, Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 3
    const-string v3, "<init>"

    .line 5
    const-string v4, "<init>(Ljava/lang/Object;)V"

    .line 7
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method
