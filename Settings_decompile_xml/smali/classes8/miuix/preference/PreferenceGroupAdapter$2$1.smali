.class Lmiuix/preference/PreferenceGroupAdapter$2$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceGroupAdapter$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/preference/PreferenceGroupAdapter$2;


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceGroupAdapter$2;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$2$1;->this$1:Lmiuix/preference/PreferenceGroupAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 394
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter$2$1;->this$1:Lmiuix/preference/PreferenceGroupAdapter$2;

    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    return-void
.end method
