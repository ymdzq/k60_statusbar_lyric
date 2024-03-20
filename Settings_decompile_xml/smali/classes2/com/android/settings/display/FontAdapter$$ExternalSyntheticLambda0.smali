.class public final synthetic Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/display/FontAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Typeface;

    invoke-static {v0, p0}, Lcom/android/settings/display/FontAdapter;->$r8$lambda$muwgBhfJW-g_prFuCoZ1SYWIDp4(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    return-void
.end method
