.class Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;
.super Ljava/lang/Object;
.source "AppcompatClassPreLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadClass(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadViewClasses(Landroid/content/Context;)V

    .line 37
    iget-object p0, p0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadActionBarClasses(Landroid/content/Context;)V

    return-void
.end method
