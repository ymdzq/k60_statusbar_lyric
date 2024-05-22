.class public final Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
