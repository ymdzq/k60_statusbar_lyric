.class public final synthetic Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Exception;

    iget-object p0, p0, Lcom/android/settings/display/LitePageLayoutFragment$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/display/LitePageLayoutFragment;->$r8$lambda$K0teQB56TRAwgKRX2CH5WPdqdrs(Ljava/lang/Exception;Landroid/content/Context;)V

    return-void
.end method
