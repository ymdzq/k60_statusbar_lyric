.class public final synthetic Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/display/FontWeightAdjustView$FontWeightChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/PageLayoutFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/PageLayoutFragment;

    return-void
.end method


# virtual methods
.method public final onWeightChange(I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$FontUpdateHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/PageLayoutFragment;->onWeightChange(I)V

    return-void
.end method
