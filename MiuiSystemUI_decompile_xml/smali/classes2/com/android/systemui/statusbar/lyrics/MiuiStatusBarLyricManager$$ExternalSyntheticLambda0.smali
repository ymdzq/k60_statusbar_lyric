# classes.dex

.class public final synthetic Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->lambda$initMediaSessionManager$0(Lcom/android/systemui/statusbar/lyrics/MiuiLyricCallback;Ljava/util/List;)V

    return-void
.end method
