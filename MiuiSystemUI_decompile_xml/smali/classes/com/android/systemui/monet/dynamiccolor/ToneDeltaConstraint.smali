.class public final Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final keepAway:Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

.field public final keepAwayPolarity:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->keepAway:Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;->keepAwayPolarity:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 7
    return-void
    .line 9
.end method
