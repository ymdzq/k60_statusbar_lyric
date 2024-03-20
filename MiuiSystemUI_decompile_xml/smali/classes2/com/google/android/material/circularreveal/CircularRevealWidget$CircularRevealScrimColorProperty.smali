.class public final Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Landroid/util/Property;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    .line 2
    invoke-direct {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>()V

    .line 4
    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "circularRevealScrimColor"

    .line 2
    const-class v1, Ljava/lang/Integer;

    .line 4
    invoke-direct {p0, v1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 2
    invoke-interface {p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    .line 4
    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 2
    check-cast p2, Ljava/lang/Integer;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p0

    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 10
    return-void
    .line 13
.end method
