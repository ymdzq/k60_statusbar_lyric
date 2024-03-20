.class public final synthetic Lcom/android/settings/emergency/SosContactsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/database/MatrixCursor;


# direct methods
.method public synthetic constructor <init>(Landroid/database/MatrixCursor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/emergency/SosContactsProvider$$ExternalSyntheticLambda0;->f$0:Landroid/database/MatrixCursor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/SosContactsProvider$$ExternalSyntheticLambda0;->f$0:Landroid/database/MatrixCursor;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/settings/emergency/SosContactsProvider;->$r8$lambda$OaR11tCs5FWileiDeZ3kCDRFfJo(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
