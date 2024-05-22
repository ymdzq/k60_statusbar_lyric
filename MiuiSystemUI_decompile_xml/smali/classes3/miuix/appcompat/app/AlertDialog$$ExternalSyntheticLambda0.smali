.class public final synthetic Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/app/AlertDialog;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 4
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    .line 6
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;)V

    .line 8
    return-void
    .line 11
.end method
