.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda1;->f$0:D

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda1;->f$0:D

    .line 2
    check-cast p1, Ljava/lang/Double;

    .line 4
    check-cast p2, Ljava/lang/Double;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
