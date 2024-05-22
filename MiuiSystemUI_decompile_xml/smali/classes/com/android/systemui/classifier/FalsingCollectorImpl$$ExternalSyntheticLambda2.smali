.class public final synthetic Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shade/ShadeQsExpansionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onQsExpansionChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onQsExpansionChanged(Ljava/lang/Boolean;)V

    .line 8
    return-void
    .line 11
.end method
