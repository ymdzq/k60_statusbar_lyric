.class public final synthetic Landroidx/compose/ui/text/input/ImmHelper21$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic f$1:Landroidx/compose/ui/text/input/ImmHelper21;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/ImmHelper21$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Landroidx/compose/ui/text/input/ImmHelper21$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/input/ImmHelper21;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/input/ImmHelper21$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Landroidx/compose/ui/text/input/ImmHelper21$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/input/ImmHelper21;

    invoke-static {v0, p0}, Landroidx/compose/ui/text/input/ImmHelper21;->$r8$lambda$wQR5FNZ5Gpg1HM_nqB8XbX-blcs(Landroid/view/inputmethod/InputMethodManager;Landroidx/compose/ui/text/input/ImmHelper21;)V

    return-void
.end method
